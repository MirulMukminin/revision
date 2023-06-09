var IMPORTANT_MODIFIER = '!';
function createSplitModifiers(config) {
  var separator = config.separator || ':';
  // splitModifiers inspired by https://github.com/tailwindlabs/tailwindcss/blob/v3.2.2/src/util/splitAtTopLevelOnly.js
  return function splitModifiers(className) {
    var bracketDepth = 0;
    var modifiers = [];
    var modifierStart = 0;
    for (var index = 0; index < className.length; index++) {
      var _char = className[index];
      if (bracketDepth === 0 && _char === separator[0]) {
        if (separator.length === 1 || className.slice(index, index + separator.length) === separator) {
          modifiers.push(className.slice(modifierStart, index));
          modifierStart = index + separator.length;
        }
      }
      if (_char === '[') {
        bracketDepth++;
      } else if (_char === ']') {
        bracketDepth--;
      }
    }
    var baseClassNameWithImportantModifier = modifiers.length === 0 ? className : className.substring(modifierStart);
    var hasImportantModifier = baseClassNameWithImportantModifier.startsWith(IMPORTANT_MODIFIER);
    var baseClassName = hasImportantModifier ? baseClassNameWithImportantModifier.substring(1) : baseClassNameWithImportantModifier;
    return {
      modifiers: modifiers,
      hasImportantModifier: hasImportantModifier,
      baseClassName: baseClassName
    };
  };
}
/**
 * Sorts modifiers according to following schema:
 * - Predefined modifiers are sorted alphabetically
 * - When an arbitrary variant appears, it must be preserved which modifiers are before and after it
 */
function sortModifiers(modifiers) {
  if (modifiers.length <= 1) {
    return modifiers;
  }
  var sortedModifiers = [];
  var unsortedModifiers = [];
  modifiers.forEach(function (modifier) {
    var isArbitraryVariant = modifier[0] === '[';
    if (isArbitraryVariant) {
      sortedModifiers.push.apply(sortedModifiers, unsortedModifiers.sort().concat([modifier]));
      unsortedModifiers = [];
    } else {
      unsortedModifiers.push(modifier);
    }
  });
  sortedModifiers.push.apply(sortedModifiers, unsortedModifiers.sort());
  return sortedModifiers;
}

export { IMPORTANT_MODIFIER, createSplitModifiers, sortModifiers };
//# sourceMappingURL=modifier-utils.mjs.map

import { twJoin } from './lib/tw-join.mjs';
export { twJoin } from './lib/tw-join.mjs';
export { twMerge } from './lib/tw-merge.mjs';
export { getDefaultConfig } from './lib/default-config.mjs';
export { extendTailwindMerge } from './lib/extend-tailwind-merge.mjs';
export { createTailwindMerge } from './lib/create-tailwind-merge.mjs';
import * as validators from './lib/validators.mjs';
export { validators };
export { mergeConfigs } from './lib/merge-configs.mjs';
export { fromTheme } from './lib/from-theme.mjs';

/**
 * @deprecated Will be removed in next major version. Use `twJoin` instead.
 */
var join = twJoin;

export { join };
//# sourceMappingURL=tailwind-merge.mjs.map

import type { DefaultTheme } from 'vitepress'

/**
 * Hand-written navigation for `/guide/*.md`.
 *
 * `dartdoc_modern --workspace-docs` regenerates a huge polluted sidebar by scanning
 * mirrored trees under `guide/c_real/`; `make doc` restores this file from git after
 * pruning that directory.
 */
export const guideSidebar: DefaultTheme.Sidebar = {
  '/guide/': [
    {
      text: 'Guide',
      collapsed: false,
      items: [
        { text: 'Overview', link: '/guide/' },
        { text: 'Package Maintainer Recipes', link: '/guide/package-maintainer-recipes' },
        { text: 'Jaspr Deployment', link: '/guide/jaspr-deployment' },
        { text: 'Jaspr Launch Readiness', link: '/guide/jaspr-launch-readiness' },
        { text: 'Jaspr vs VitePress', link: '/guide/jaspr-vs-vitepress' },
        { text: 'DartPad Embeds', link: '/guide/dartpad-embeds' },
        { text: 'Directives', link: '/guide/directives' },
        {
          text: 'Dart Documentation Comments Specification',
          link: '/guide/dart_documentation_comment_specification',
        },
      ],
    },
  ],
}

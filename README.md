# fluxer-tui-overlay

Gentoo overlay for [polonius' fluxer-tui fork](https://github.com/AIVirtuoso/fluxer-tui)

# Installation

It is highly recommended to install the live ebuild, because changes are fast at the moment.
You will need to set `/etc/portage/package.accept_keywords/fluxer-tui` to `=net-im/fluxer-tui-9999 **`.

```
# if you don't already have eselect-repository install it:
emerge --ask app-eselect/eselect-repository
# add the repository:
eselect repository add fluxer-tui-overlay git https://github.com/cylenia/fluxer-tui-overlay
# sync your repositories:
emerge --sync
# install fluxer-tui:
doas emerge -av fluxer-tui 
```

# Credits

- polonius for maintaining the fork of fluxer-tui
- dogbonewish for creating the original project
- myn for helping me with this overlay

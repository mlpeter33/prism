# Prism - The Distro Installer
Prism aims to be an easy installer built in rust for Linux distros without attaching to a specific one
(First compatible distro will be Ubuntu) 

---

# Features
## Roadmap

- [ ] Install Ubuntu system
- [ ] TUI installer
- [ ] Desktop environment selection
- [ ] Remove default packages to reduce system footprint
- [ ] Optional Snap removal
- [ ] Basic performance optimizations
- [ ] Live ISO for direct boot & install
- [ ] Filesystem options: Btrfs, ZFS, LVM
- [ ] Cloud-init support for automated setups
- [ ] Advanced customization

# Usage

Clone the repo: 
```
git clone https://github.com/codex-laboratory/prism.git
cd prism
```
Run the installer: 
```
chmod +x prism.sh
sudo ./prism.sh
```
Choose your system setup and let Prism handle the rest

# Contributing

Contributions are welcome! If you have ideas or want to improve Prism, feel free to submit a pull request.

# License

Prism is licensed under the MIT License.

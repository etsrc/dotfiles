# Notes

The CLI Parameter: You can run home-manager switch --flake .#yourname (if using the modern "Flakes" system) or set an environment variable.

The "Dotfiles" Way: Most people (including you, eventually) keep their Nix files in their ~/dotfiles folder and then symlink ~/.config/home-manager to that folder. This way, when you edit your dotfiles, Home Manager sees the changes.



nix-collect-garbage
nix-channel --update
home-manager switch
nix-shell -A alacritty '<nixpkgs>'
nix-shell -p alacritty --run zsh
nix shell nixpkgs#alacritty


{ pkgs, ... }: {
  home.packages = [ pkgs.tmux ];

  # Nix will create a symlink at ~/.tmux.conf pointing to your file
  home.file.".tmux.conf".source = ./my-configs/tmux.conf;

  # You can even link entire folders (like your LazyVim setup)
  home.file.".config/nvim".source = ./my-configs/nvim-folder;
}


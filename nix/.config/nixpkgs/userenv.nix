let 
  pkgs = import <nixpkgs> { };
in pkgs.buildEnv {

  name = "userenv";

  paths = with pkgs; [
    gh
    stow
    direnv
    neovim
    git
    lazygit
    vimPlugins.vim-plug
    antigen
    starship
    tmux
    ripgrep
    fd
    fzf
    bat
    ripgrep
    rustup
    nodePackages."@antfu/ni"
    (writeScriptBin "nix-env-update" ''
      #!${stdenv.shell}
      nix-env --install --file ~/.config/nixpkgs/userenv.nix
    '')
  ];

}

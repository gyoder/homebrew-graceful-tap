class NeovimNightly < Formula
  desc "Neovim nightly build"
  homepage "https://neovim.io/"
  version "nightly"

  on_macos do
    on_arm do
      url "https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-arm64.tar.gz"
    end
    on_intel do
      url "https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-x86_64.tar.gz"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-arm64.tar.gz"
    end
    on_intel do
      url "https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.tar.gz"
    end
  end

  def install
    bin.install "bin/nvim"
    lib.install Dir["lib/*"]
    share.install Dir["share/*"]
  end

  test do
    system "#{bin}/nvim", "--version"
  end
end

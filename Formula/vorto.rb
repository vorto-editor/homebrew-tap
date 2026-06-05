class Vorto < Formula
  VORTO_VERSION = "0.15.2".freeze

  desc "Vim-flavored modal terminal editor with batteries included"
  homepage "https://docs.vorto-editor.dev/"
  license any_of: ["MIT", "Apache-2.0"]

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/vorto-editor/vorto/releases/download/v#{VORTO_VERSION}/vorto-#{VORTO_VERSION}-aarch64-apple-darwin.tar.gz"
      sha256 "d19fa968ad7e706c1784049109f50176547ebcd9bf60276468eeae1afa1b8fd7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vorto-editor/vorto/releases/download/v#{VORTO_VERSION}/vorto-#{VORTO_VERSION}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a96f874162ea93f911360555ed9f6e7f9227be3455c41462de056ab11dca4f4"
    end
    on_intel do
      url "https://github.com/vorto-editor/vorto/releases/download/v#{VORTO_VERSION}/vorto-#{VORTO_VERSION}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef9e484da0e133923bc698ec6890ac57340f08aa285f307e29c030f081721f77"
    end
  end

  def install
    bin.install "vorto"
    doc.install "README.md"
  end

  test do
    assert_match "vorto #{version}", shell_output("#{bin}/vorto --version")
  end
end

class Vorto < Formula
  VORTO_VERSION = "0.15.0".freeze

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
      sha256 "80af4cdc9284c4b085c8632f2b6208bf9d723f4c0da0c0fd1cb11a2a6ab0643d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vorto-editor/vorto/releases/download/v#{VORTO_VERSION}/vorto-#{VORTO_VERSION}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cbf53f796d93738e7528df96ceff798c74b16df8117d985c140b86bcfc8b58ba"
    end
    on_intel do
      url "https://github.com/vorto-editor/vorto/releases/download/v#{VORTO_VERSION}/vorto-#{VORTO_VERSION}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6c4a407d9611360e85c82d1515472ed0df58bc5e2af293e94dd3bac480eac466"
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

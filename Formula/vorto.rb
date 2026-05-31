class Vorto < Formula
  VORTO_VERSION = "0.15.1".freeze

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
      sha256 "e66aafb585cdd4ccff549aee33c8488514a5ea0f44919150a55c5b816cf45463"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vorto-editor/vorto/releases/download/v#{VORTO_VERSION}/vorto-#{VORTO_VERSION}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4c42e4b97760b495aa29fc0f87f7d91d0c9da26aac7d35c4ab7899859903fb07"
    end
    on_intel do
      url "https://github.com/vorto-editor/vorto/releases/download/v#{VORTO_VERSION}/vorto-#{VORTO_VERSION}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "82fa0cdc4cc438e22c7f8b944263316947fb4ab833e75cd2be8fd9de63d2b149"
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

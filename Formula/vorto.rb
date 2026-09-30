class Vorto < Formula
  VORTO_VERSION = "0.15.4".freeze

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
      sha256 "55f6bd42b2e3d835ab8d7c8401d1075cada5b604231cbf40f44f0755ad6341bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vorto-editor/vorto/releases/download/v#{VORTO_VERSION}/vorto-#{VORTO_VERSION}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "11fcfb1d1f7b1022e3a20ef217a083c36fbb9258369cfa7480f57fbea0f44678"
    end
    on_intel do
      url "https://github.com/vorto-editor/vorto/releases/download/v#{VORTO_VERSION}/vorto-#{VORTO_VERSION}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac26652350ce17114e8f16439b90cc044ea6c6575c9443d902e5e40e7e00f6ee"
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

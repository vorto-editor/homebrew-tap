class Vorto < Formula
  VORTO_VERSION = "0.15.3".freeze

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
      sha256 "75826cdcc10ecdc3d89d3ab2682194d4c3324936f94a2e63a8348bb0c3eda25d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vorto-editor/vorto/releases/download/v#{VORTO_VERSION}/vorto-#{VORTO_VERSION}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "06fc483e219af181650b91508ff9853452de5ba77274865af7dccdcf288a3ca4"
    end
    on_intel do
      url "https://github.com/vorto-editor/vorto/releases/download/v#{VORTO_VERSION}/vorto-#{VORTO_VERSION}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "705fdca5389a7cb889a2c3da4b23800b9e52a6b0b9da779b204f63f922b40347"
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

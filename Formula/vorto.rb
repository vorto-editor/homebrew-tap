class Vorto < Formula
  desc "Vim-flavored modal terminal editor with batteries included"
  homepage "https://docs.vorto-editor.dev/"
  version "0.14.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/vorto-editor/vorto/releases/download/v#{version}/vorto-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "14e15146cae8801b6055f36c739599fdb1253a756fda458b5b241a240c35e0ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vorto-editor/vorto/releases/download/v#{version}/vorto-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c9ceb953cc9bc3594a8a04f591921e20ca306c56002a6319a455365d008a5872"
    end
    on_intel do
      url "https://github.com/vorto-editor/vorto/releases/download/v#{version}/vorto-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0911fcc749bf1bbf130d3233b86e171ca256ec3f85dfe987f575ac4f73c1b2f3"
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

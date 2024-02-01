class Ask < Formula
  desc "Ask lets you get shell commands using natural language by guessing your shell and prompting ChatGPT"
  homepage "https://github.com/damoonrashidi/homebrew_ask"
  url "https://github.com/damoonrashidi/ask/archive/refs/tags/1.3.0.tar.gz"
  version "1.3.0"
  sha256 "feff2a4df4581d31a768be2891c0178ed24fe4702c6fe0ac2c573ec16bf13b63"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/ask"
  end

  test do
    system "#{bin}/ask", "--version"
  end
end

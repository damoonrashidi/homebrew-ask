class HelloWorld < Formula
  desc "Ask lets you get shell commands using natural language by guessing your shell and prompting ChatGPT"
  homepage "https://github.com/damoonrashidi/homebrew_ask"
  url "https://github.com/damoonrashidi/ask/archive/refs/tags/1.1.0.tar.gz"
  version "1.1.0"
  sha256 "8d438fc7215b69e4af2c4dde5b3a52d0d5e3e23c3ccdafc82a266b383dda0ce6"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/ask"
  end

  test do
    # This test is not good!
    system "#{bin}/hello", "--version"
  end
end

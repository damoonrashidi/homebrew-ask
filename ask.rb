class Ask < Formula
  desc "Ask lets you get shell commands using natural language by guessing your shell and prompting ChatGPT"
  homepage "https://github.com/damoonrashidi/homebrew_ask"
  url "https://github.com/damoonrashidi/ask/archive/refs/tags/1.2.0.tar.gz"
  version "1.2.0"
  sha256 "45d5446397f78335e455aa79cf4ad489233df0d71e05b5117dd0f04a04e1ec84"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/ask"
  end

  test do
    system "#{bin}/ask", "--version"
  end
end

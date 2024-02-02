class Ask < Formula
  desc "Ask lets you get shell commands using natural language by guessing your shell and prompting ChatGPT"
  homepage "https://github.com/damoonrashidi/ask"
  url "https://github.com/damoonrashidi/ask/archive/refs/tags/1.4.0.tar.gz"
  version "1.4.0"
  sha256 "b1d6ab66bfbd7bf213eec5bacacd3ece9db1c405f742ad6e1062863ff97380ae"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/ask"
  end

  test do
    system "#{bin}/ask", "--version"
  end
end

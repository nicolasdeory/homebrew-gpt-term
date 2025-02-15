class GptTerm < Formula
  desc "CLI tool for GPT interactions in the terminal"
  homepage "https://github.com/nicolasdeory/claude-shell"
  version "v1.1.0"
  
  if OS.mac?
    url "https://github.com/nicolasdeory/claude-shell/releases/download/v1.1.0/gpt-term-darwin-amd64"
    sha256 "78eeca88bdfb071280c17e664714ae594a19ad0b45aada8cf832513a1803aaa6"
  elsif OS.linux?
    url "https://github.com/nicolasdeory/claude-shell/releases/download/v1.1.0/gpt-term-linux-amd64"
    sha256 "859d7b4b26f2e65b8b3aa00ffc7403152b1dd1106d39aa1165483012d6a79435"
  end
  
  def install
    bin.install "gpt-term-#{OS.mac? ? "darwin" : "linux"}-amd64" => "gpt-term"
  end
  
  test do
    system "#{bin}/gpt-term", "--version"
  end
end

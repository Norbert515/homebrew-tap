class Vide < Formula
  desc "Agentic terminal UI for Claude Code, built for Flutter developers"
  homepage "https://github.com/Norbert515/vide_cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Norbert515/vide_cli/releases/download/v0.3.0/vide-macos-arm64.tar.gz"
      sha256 "b38a02796d11acf219af9598432f8e59f516395a1395025e35b0835d882fc58e"
    else
      url "https://github.com/Norbert515/vide_cli/releases/download/v0.3.0/vide-macos-x64.tar.gz"
      sha256 "48544834446b6537b41dbe4f5b1bc7aa9221f04fe12c043b7017ed7b94e55acb"
    end
  end

  def install
    bin.install "vide"
  end

  test do
    assert_match "vide", shell_output("#{bin}/vide --version 2>&1", 1)
  end
end

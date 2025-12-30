class Vide < Formula
  desc "Agentic terminal UI for Claude Code, built for Flutter developers"
  homepage "https://github.com/Norbert515/vide_cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Norbert515/vide_cli/releases/download/v0.3.1/vide-macos-arm64.tar.gz"
      sha256 "72638e32445170f946c75a2ef50515ed08fbfa50e4e53d122fb52de71847d24e"
    else
      url "https://github.com/Norbert515/vide_cli/releases/download/v0.3.1/vide-macos-x64.tar.gz"
      sha256 "96fbb758cf44e5545a20e6283dccfaca0f848c84075572bbfefa3dfc941f4a85"
    end
  end

  def install
    bin.install "vide"
  end

  test do
    assert_match "vide", shell_output("#{bin}/vide --version 2>&1", 1)
  end
end

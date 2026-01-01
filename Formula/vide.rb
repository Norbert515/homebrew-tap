class Vide < Formula
  desc "Agentic terminal UI for Claude Code, built for Flutter developers"
  homepage "https://github.com/Norbert515/vide_cli"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Norbert515/vide_cli/releases/download/v0.3.3/vide-macos-arm64.tar.gz"
      sha256 "aa44e9f222cf0686f21e4e2ce8981f4196d37a5409c8e3321e2ba08b493f6e67"
    else
      url "https://github.com/Norbert515/vide_cli/releases/download/v0.3.3/vide-macos-x64.tar.gz"
      sha256 "48eb925996333492700c2b573ae812c488948aced5a33769a93104e31d0faa60"
    end
  end

  def install
    bin.install "vide"
  end

  test do
    assert_match "vide", shell_output("#{bin}/vide --version 2>&1", 1)
  end
end

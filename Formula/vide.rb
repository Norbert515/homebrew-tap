class Vide < Formula
  desc "An agentic terminal UI for Claude, built for Flutter developers"
  homepage "https://github.com/Norbert515/vide_cli"
  version "0.3.0"
  url "https://github.com/Norbert515/vide_cli/releases/download/v0.3.0/vide-macos.tar.gz"
  sha256 "768de02bd1a45671c6e8c69b44cb4030163982ae65c811f0a904cfe61eb62c1f"
  license "Apache-2.0"

  def install
    bin.install "vide-macos" => "vide"
  end

  test do
    system "#{bin}/vide", "--help"
  end
end

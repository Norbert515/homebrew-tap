class Vide < Formula
  desc "An agentic terminal UI for Claude, built for Flutter developers"
  homepage "https://github.com/Norbert515/vide_cli"
  version "0.2.0"
  url "https://github.com/Norbert515/vide_cli/releases/download/v0.2.0/vide-macos.tar.gz"
  sha256 "f1da39659328298cf1b70a21850002fd07fb1776fb7b9df326b829de1f9062d4"
  license "Apache-2.0"

  def install
    bin.install "vide-macos" => "vide"
  end

  test do
    system "#{bin}/vide", "--help"
  end
end

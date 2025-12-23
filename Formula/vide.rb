class Vide < Formula
  desc "An agentic terminal UI for Claude, built for Flutter developers"
  homepage "https://github.com/Norbert515/vide_cli"
  version "0.1.2"
  url "https://github.com/Norbert515/vide_cli/releases/download/v0.1.2/vide-macos.tar.gz"
  sha256 "740d956a8157c2b8b6ea205c6473720ff37ea2e359b49a0bcab9f99a1d445840"
  license "Apache-2.0"

  def install
    bin.install "vide-macos" => "vide"
  end

  test do
    system "#{bin}/vide", "--help"
  end
end

class Vide < Formula
  desc "An agentic terminal UI for Claude, built for Flutter developers"
  homepage "https://github.com/Norbert515/vide_cli"
  version "0.1.1"
  url "https://github.com/Norbert515/vide_cli/releases/download/v0.1.1/vide-macos.tar.gz"
  sha256 "ccd401c249bc1efb8f8960921629c633c176d3871335c94e9ea7f346fae2ec1a"
  license "Apache-2.0"

  def install
    bin.install "vide-macos" => "vide"
  end

  test do
    system "#{bin}/vide", "--help"
  end
end

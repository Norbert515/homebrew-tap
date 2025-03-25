class Vide < Formula
    desc "Vide"
    homepage "https://vide.dev"
    version "0.0.6-alpha"
    url "https://github.com/Norbert515/homebrew-tap/releases/download/v0.0.6-alpha/vide"
    sha256 "a2a549d49116c77e56e22616d7a72c0b1a77c3c81fd301154d42a3efc654c357"
    
    def install
      bin.install "vide"  # Install the main binary
      bin.install "vide_mcp"  # Install the MCP binary
      chmod 0755, bin/"vide"  # ensure the binaries are executable
      chmod 0755, bin/"vide_mcp"
    end

    test do
      # Test both binaries
      assert_match version.to_s, shell_output("#{bin}/vide --version")
      assert_match version.to_s, shell_output("#{bin}/vide_mcp --version")
    end
  end
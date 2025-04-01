class Vide < Formula
    desc "Vide"
    homepage "https://vide.dev"
    version "0.0.6-alpha"
    url "https://github.com/Norbert515/homebrew-tap/releases/download/v0.0.6-alpha/vide_binary.zip"
    sha256 "6aa33729bc135d207bdffed88c97f8e433a0cae266c696d868e83538c0a811dc"
    
    def install
      # Unzip the downloaded file
      system "unzip", "-o", cached_download

      # Install both binaries from the unzipped contents
      bin.install "vide"
      bin.install "vide_mcp"
      
      # Ensure the binaries are executable
      chmod 0755, bin/"vide"
      chmod 0755, bin/"vide_mcp"
    end

    test do
      # Test both binaries
      assert_match version.to_s, shell_output("#{bin}/vide --version")
      assert_match version.to_s, shell_output("#{bin}/vide_mcp --version")
    end
  end
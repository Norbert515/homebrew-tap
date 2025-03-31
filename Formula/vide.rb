class Vide < Formula
    desc "Vide"
    homepage "https://vide.dev"
    version "0.0.6-alpha"
    url "https://github.com/Norbert515/homebrew-tap/releases/download/v0.0.6-alpha/vide_binary.zip"
    sha256 "ec1f0d6290af673d484f67f01f9aed95b2b07db002bf5ca77700b99a0f9e798c"
    
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
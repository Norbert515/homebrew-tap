class Vide < Formula
    desc "Vide"
    homepage "https://vide.dev"
    version "0.1.0"
    url "https://github.com/Norbert515/vide_cli/releases/download/v0.1.0/vide-macos"
    sha256 "f94e8ebeb602c78c33540db875ba1d29cddef6025850c2a5fef48c88b782c575"
    
    def install
      # Unzip the downloaded file
      system "unzip", "-o", cached_download

      # Install the binary
      bin.install "vide"
      
      # Ensure the binary is executable
      chmod 0755, bin/"vide"
    end

    test do
      # Test the binary
      assert_match version.to_s, shell_output("#{bin}/vide --version")
    end
  end
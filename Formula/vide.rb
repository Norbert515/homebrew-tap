class Vide < Formula
    desc "Vide"
    homepage "https://vide.dev"
    version "0.0.7-alpha"
    url "https://github.com/Norbert515/homebrew-tap/releases/download/v0.0.7-alpha/vide_binary.zip"
    sha256 "f8c73e6724110f3d60497e43aa451019ba22bcfb0f3026a46295b012c7e15e7c"
    
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
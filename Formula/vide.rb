class Vide < Formula
    desc "Vide"
    homepage "https://vide.dev"
    version "0.0.7-alpha"
    url "https://github.com/Norbert515/homebrew-tap/releases/download/v0.0.7-alpha/vide_binary.zip"
    sha256 "a6b4a2cedd47f6b3f5e74ccb261bd7533cc0bbefa8bfabf51b0e42e6bbefb85b"
    
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
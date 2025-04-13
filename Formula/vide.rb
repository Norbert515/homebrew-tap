class Vide < Formula
    desc "Vide"
    homepage "https://vide.dev"
    version "0.0.7-alpha"
    url "https://github.com/Norbert515/homebrew-tap/releases/download/v0.0.7-alpha/vide_binary.zip"
    sha256 "34afb4bc9d2bd2d9fbc789c541bd512446db87f6bf641ce0679e9e36ede0816e"
    
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
class Vide < Formula
    desc "Vide"
    homepage "https://vide.dev"
    version "0.0.7-alpha"
    url "https://github.com/Norbert515/homebrew-tap/releases/download/v0.0.7-alpha/vide_binary.zip"
    sha256 "e3ee3dfadd16ca5743c1fea2ed67c25a055e9d8ef4f2a8c30ec68c92aba0a25a"
    
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
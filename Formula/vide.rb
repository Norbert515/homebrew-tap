class Vide < Formula
    desc "Vide"
    homepage "https://vide.dev"
    version "0.1.1"
    url "https://github.com/Norbert515/vide_cli/releases/download/v0.1.1/vide-macos.tar.gz"
    sha256 "ccd401c249bc1efb8f8960921629c633c176d3871335c94e9ea7f346fae2ec1a"
    
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
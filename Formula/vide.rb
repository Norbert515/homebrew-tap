class Vide < Formula
    desc "Vide"
    homepage "https://vide.dev"
    version "0.0.2-alpha"
    url "https://github.com/Norbert515/homebrew-tap/releases/download/v0.0.2-alpha/vide"
    sha256 "0f8ad8c1326dc128f7dc664db7994068e28240a2b9a2c9d05904425424a438c9"
    
    def install
      bin.install "vide"  # this installs the downloaded binary
      chmod 0755, bin/"vide"  # ensure the binary is executable
    end

    test do
      # You can write a simple test to verify the binary was installed correctly.
      # For example, if the binary supports a '--version' flag:
      assert_match version.to_s, shell_output("#{bin}/vide --version")
    end
  end
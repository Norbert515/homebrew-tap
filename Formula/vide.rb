class Vide < Formula
    desc "Vide"
    homepage "https://vide.dev"
    version "0.0.5-alpha"
    url "https://github.com/Norbert515/homebrew-tap/releases/download/v0.0.5-alpha/vide"
    sha256 "238bacf89042bba858e6ce0772c50d437f1b7a96563ab8c245f8011b748e8ec2"
    
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
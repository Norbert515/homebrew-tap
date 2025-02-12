class Vide < Formula
    desc "Vide"
    homepage "https://vide.dev"
    version "0.0.4-alpha"
    url "https://github.com/Norbert515/homebrew-tap/releases/download/v0.0.4-alpha/vide"
    sha256 "e1b911af81f1e2329a0932e1ec57b10a34c7e4092fc0bd8a494df3f2802491df"
    
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
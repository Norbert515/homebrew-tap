class Vide < Formula
    desc "Vide"
    homepage "https://vide.dev"
    version "0.0.1-alpha"
    url "https://github.com/Norbert515/homebrew-tap/releases/download/v0.0.1-alpha/vide"
    sha256 "d2e1feae1d9fe786ece516b2b88ba2545030616e010893b29f1f7ac2f489d4f5"
    
    def install
      bin.install "vide"  # this installs the downloaded binary
      chmod 0755, bin/"vide"  # ensure the binary is executable
    end

    test do
      # You can write a simple test to verify the binary was installed correctly.
      # For example, if the binary supports a '--version' flag:
      assert_match version.to_s, shell_output("#{bin}/vide")
    end
  end
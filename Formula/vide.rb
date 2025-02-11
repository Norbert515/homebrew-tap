class Vide < Formula
    desc "Vide"
    homepage "https://vide.dev"
    version "0.0.3-alpha"
    url "https://github.com/Norbert515/homebrew-tap/releases/download/v0.0.3-alpha/vide"
    sha256 "c844f247586ea3a7a694bf73e4ece5cf9e830dcfe5eeb03768479c5c3d620db7"
    
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
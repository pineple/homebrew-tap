class BedrockPass < Formula
  desc "Transfer Minecraft Bedrock LAN connections to a remote Geyser server"
  homepage "https://github.com/pineple/bedrock-pass-releases"
  version "0.1.0"
  depends_on :macos

  on_arm do
    url "https://github.com/pineple/bedrock-pass-releases/releases/download/v0.1.0/bedrock-pass_0.1.0_darwin_arm64.tar.gz"
    sha256 "2049f21fdfbba1044f53c60a53e7a7bd7d2e2ac16c41439253ce8b6047ba5ae1"
  end

  on_intel do
    url "https://github.com/pineple/bedrock-pass-releases/releases/download/v0.1.0/bedrock-pass_0.1.0_darwin_amd64.tar.gz"
    sha256 "40dbb143a7d48c5a3a3f1430152357e6e109c2a29817ba374020059f2a6bf1e0"
  end

  def install
    bin.install "bedrock-pass"
    pkgshare.install "THIRD_PARTY_NOTICES.md", "LICENSES", "third_party_licenses"
  end

  test do
    assert_equal "bedrock-pass #{version}", shell_output("#{bin}/bedrock-pass --version").strip
  end
end

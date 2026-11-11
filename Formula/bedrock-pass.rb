class BedrockPass < Formula
  desc "Transfer Minecraft Bedrock LAN connections to a remote Geyser server"
  homepage "https://github.com/pineple/bedrock-pass-releases"
  version "0.1.2"
  depends_on :macos

  on_arm do
    url "https://github.com/pineple/bedrock-pass-releases/releases/download/v0.1.2/bedrock-pass_0.1.2_darwin_arm64.tar.gz"
    sha256 "6382db0bba5296f74bf2f0f091e1f5d22c254596899c58ae69b40edf1b54d17a"
  end

  on_intel do
    url "https://github.com/pineple/bedrock-pass-releases/releases/download/v0.1.2/bedrock-pass_0.1.2_darwin_amd64.tar.gz"
    sha256 "d8a168ee327b21f9e6c2c8d862ca447b364b48e8cb2378420884664bf2f16abe"
  end

  def install
    bin.install "bedrock-pass"
    pkgshare.install "THIRD_PARTY_NOTICES.md", "LICENSES", "third_party_licenses"
  end

  test do
    assert_equal "bedrock-pass #{version}", shell_output("#{bin}/bedrock-pass --version").strip
  end
end

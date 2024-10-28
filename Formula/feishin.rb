class Feishin < Formula
  desc "Feishu API client"
  homepage "https://github.com/jeffvli/feishin"
  url "https://github.com/jeffvli/feishin/archive/refs/tags/v0.11.1.tar.gz" # Adjust to the latest version
  sha256 "1490419f8349d620f062107ef6532e022ff27f0cf7a90333375b4c32d4242bd1"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/feishin", "--version" # Adjust based on available flags for the app
  end
end

class Feishin < Formula
  desc "Feishu API client"
  homepage "https://github.com/jeffvli/feishin"
  url "https://github.com/jeffvli/feishin/archive/refs/tags/v0.11.1.tar.gz" # Adjust to the latest version
  sha256 "330d1ff73da10423c3b458a2a525b270375a8349a2cd9346ec90ed729dce4b06"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/feishin", "--version" # Adjust based on available flags for the app
  end
end

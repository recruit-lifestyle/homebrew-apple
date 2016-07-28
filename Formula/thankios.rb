class Thankios < Formula
  desc "Acknowlegements Settings.bundle generator"
  homepage "https://github.com/uny/Thankios"
  url "https://github.com/recruit-lifestyle/Thankios/archive/v2.0.0.tar.gz"
  version "2.0.0"
  sha256 "62d9c1329cacfb4e5443593fd6172ab4f32a353bbe0ee39c949d0eb4b79476fa"

  depends_on :xcode => ["7.3.1", :build]

  def install
    system "make", "prefix_install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/thankios"
  end
end

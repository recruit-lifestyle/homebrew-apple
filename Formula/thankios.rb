class Thankios < Formula
  desc "Acknowlegements Settings.bundle generator"
  homepage "https://github.com/uny/Thankios"
  url "https://github.com/recruit-lifestyle/Thankios/archive/v2.1.0.tar.gz"
  version "2.1.0"
  sha256 "2a6d20bfcd4b3c38dd277c62b58c6eff1601a14c1c1f2836771db723f96b7e3e"

  depends_on :xcode => ["8.0", :build]

  def install
    system "make", "prefix_install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/thankios"
  end
end

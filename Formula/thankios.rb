class Thankios < Formula
  desc "Acknowlegements Settings.bundle generator"
  homepage "https://github.com/recruit-lifestyle/Thankios"
  url "https://github.com/recruit-lifestyle/Thankios/archive/v2.1.1.tar.gz"
  version "2.1.1"
  sha256 "0e7c4dba0f2bd1b565518272dbaddbbf611845221d66576e6a581d1a600faa7a"

  depends_on :xcode => ["8.0", :build]

  def install
    system "make", "prefix_install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/thankios"
  end
end

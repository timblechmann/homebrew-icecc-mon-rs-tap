class IceccMon < Formula
  desc "A lightweight TUI monitor for icecc distributed compilation"
  homepage "https://github.com/timblechmann/icecc-mon-rs"
  url "https://github.com/timblechmann/icecc-mon-rs/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "00312cab2204bebc1dd159b37c35563a6c5e952df0986c5cef37982d075860c4"
  license "GPL-2.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"icecc-mon", "--help"
  end
end

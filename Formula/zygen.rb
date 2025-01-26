class Zygen < Formula
  desc "Zeroth Genotype CLI for Google Cloud APIs"
  homepage "https://github.com/thash/zygen"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thash/zygen/releases/download/#{version}/zygen-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e79b9caf83e987024c96804015d769cb29d45fd2558837910c24469afc549d7b"
    elsif Hardware::CPU.intel?
      url "https://github.com/thash/zygen/releases/download/#{version}/zygen-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "f1eabfb148023dccc68b08354c2392380722d57de8f5583589fa3b3cfd6a9736"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/thash/zygen/releases/download/#{version}/zygen-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b3b4cd4cf50e703548285dc702c7d677d43b18915756de3686bab2ad3fc8f538"
    elsif Hardware::CPU.intel?
      url "https://github.com/thash/zygen/releases/download/#{version}/zygen-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e666efcf2c465cb131b387140694d86ab6cf9d1f9f1b3cdecad80f6f5d554cbe"
    end
  end

  def install
    bin.install "zg"
  end
end

class Osprey < Formula
  desc "Client and service for providing access to Kubernetes clusters"
  homepage "https://github.com/sky-uk/osprey/"
  url "https://dl.bintray.com/sky-uk/oss-generic/osprey/v2.2.0/osprey-v2.2.0_darwin_amd64.tar.gz"
  sha256 "83399154fc69168e463cccc10c6c162f85795d226dbe2d6171c199fc4738f2b7"

  def install
    bin.install('osprey')
  end

  test do
    system "#{bin}/osprey", testfilepath
  end
end

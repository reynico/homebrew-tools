class Helm < Formula
  desc "The Kubernetes package manager"
  homepage "https://helm.sh/"
  url "https://storage.googleapis.com/kubernetes-helm/helm-v2.13.1-darwin-amd64.tar.gz"
  sha256 "c9564c4133349b98a8c1dda42fdb6545f6e4bfdf0980cdfc38cf76d2f8e5e701"

  def install
    bin.install('helm')
    bin.install('tiller')
  end

  test do
    system "#{bin}/helm", testfilepath
    system "#{bin}/tiller", testfilepath
  end
end

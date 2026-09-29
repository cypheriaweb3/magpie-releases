cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.427"
  sha256 arm:   "b472b0848e42d44ada749a59d92679cb086fad01a81c53ca768b19f8ab5923ba",
         intel: "012c9793505806c543d6023f69c6fc98e9e5af50036a8cf750f42e09a73dba75"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

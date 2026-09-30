cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.478"
  sha256 arm:   "82de0bf54490f836f1bdc3b5b6a4e2230cde5da17b91da0514113e5a19b19efc",
         intel: "cca65c5efad6c3b14acee8d2706f2ad437030215f46ec41a7674d247cbb9a36a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

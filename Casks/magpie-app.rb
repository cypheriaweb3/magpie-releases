cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.253"
  sha256 arm:   "07fa6aba476dc1e833beff7a973e9eb736c8acab12937054afcc2a1d3cf0de8e",
         intel: "7d7dbbc1e21a03930624b787034235fd3f37d1f272e341d3c214766978c4370e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

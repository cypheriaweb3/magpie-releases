cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.297"
  sha256 arm:   "c2ec7ec67aa41e76bf22b0de757dc5ae8778444e4e422c9cad4afd737fb62484",
         intel: "8a30c0cda1031964301cf1e11a1dff98824035c4898845dd6a2baac05b262713"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

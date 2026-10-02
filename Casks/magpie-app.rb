cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.650"
  sha256 arm:   "5c1bbfba2584f2ead18d022b3d3157d79c261e134b6d52e28dff623a8dd5d427",
         intel: "61ccb20b61c0f83c169950d08c2e0934cdc488c14fca9acc553d4946242e44ef"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

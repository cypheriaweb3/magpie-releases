cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.577"
  sha256 arm:   "60627720d67bc9d563f9eccdd89e43b93bae4b28b3c2d2d091c43e2d3e0d6350",
         intel: "4c7c5e6648be7acb68d959e93e4e1f646a2f4d9925084e460e3d833a7ba22d54"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

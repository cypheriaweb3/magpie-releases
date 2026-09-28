cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.235"
  sha256 arm:   "a36fff1d625de24f44240b0e0127acdbd1fc952e254d4c50c429b75af86f9a2d",
         intel: "70c745a702ea39084bb5d39f3bc5b3ba832c5ef1fa094313ab64b6e5d1bb2b28"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

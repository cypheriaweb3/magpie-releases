cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.770"
  sha256 arm:   "7dd3363bfa69bfbebfce5f8cf45a9735ce84c827d9a9421f481e78fc91f6330c",
         intel: "46e2be98a65bcc06d2b537b817282f25d8c39eedebd7d5e0f05a442964e395cd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

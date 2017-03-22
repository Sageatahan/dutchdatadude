﻿#ActivateSiteFeatures

Function ActivateSiteFeatures
{
    
    Write-Log -Verbose "Step 13: Activated Site Features"
    Enable-SPFeature -Identity PremiumWeb -Url $global:httpHostName
    if ($global:DoAllTasks) {
        Set-Restart-AndResume $global:script "15"
        }

    }
    catch {
        Write-Log -Verbose  "Failed to Activated Site Features. Error: $_.Exception.Message"
    }
}